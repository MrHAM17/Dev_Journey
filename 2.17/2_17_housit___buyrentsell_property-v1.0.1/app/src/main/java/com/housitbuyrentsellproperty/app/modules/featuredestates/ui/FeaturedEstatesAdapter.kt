package com.housitbuyrentsellproperty.app.modules.featuredestates.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowFeaturedestatesBinding
import com.housitbuyrentsellproperty.app.modules.featuredestates.`data`.model.FeaturedestatesRowModel
import kotlin.Int
import kotlin.collections.List

class FeaturedEstatesAdapter(
  var list: List<FeaturedestatesRowModel>
) : RecyclerView.Adapter<FeaturedEstatesAdapter.RowFeaturedestatesVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowFeaturedestatesVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_featuredestates,parent,false)
    return RowFeaturedestatesVH(view)
  }

  override fun onBindViewHolder(holder: RowFeaturedestatesVH, position: Int) {
    val featuredestatesRowModel = FeaturedestatesRowModel()
    // TODO uncomment following line after integration with data source
    // val featuredestatesRowModel = list[position]
    holder.binding.featuredestatesRowModel = featuredestatesRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<FeaturedestatesRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: FeaturedestatesRowModel
    ) {
    }
  }

  inner class RowFeaturedestatesVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowFeaturedestatesBinding = RowFeaturedestatesBinding.bind(itemView)
    init {
      binding.linearEstatesCardVertical.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, FeaturedestatesRowModel())
      }
    }
  }
}
