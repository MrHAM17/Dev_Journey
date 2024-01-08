package com.housitbuyrentsellproperty.app.modules.realestateslistbycategory.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.databinding.RowRealestateslistbycategoryBinding
import com.housitbuyrentsellproperty.app.modules.realestateslistbycategory.`data`.model.RealestateslistbycategoryRowModel
import kotlin.Int
import kotlin.collections.List

class RealEstatesListbyCategoryAdapter(
  var list: List<RealestateslistbycategoryRowModel>
) : RecyclerView.Adapter<RealEstatesListbyCategoryAdapter.RowRealestateslistbycategoryVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int):
      RowRealestateslistbycategoryVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_realestateslistbycategory,parent,false)
    return RowRealestateslistbycategoryVH(view)
  }

  override fun onBindViewHolder(holder: RowRealestateslistbycategoryVH, position: Int) {
    val realestateslistbycategoryRowModel = RealestateslistbycategoryRowModel()
    // TODO uncomment following line after integration with data source
    // val realestateslistbycategoryRowModel = list[position]
    holder.binding.realestateslistbycategoryRowModel = realestateslistbycategoryRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<RealestateslistbycategoryRowModel>) {
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
      item: RealestateslistbycategoryRowModel
    ) {
    }
  }

  inner class RowRealestateslistbycategoryVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowRealestateslistbycategoryBinding =
        RowRealestateslistbycategoryBinding.bind(itemView)
  }
}
