package com.tikpikshortvideosocialnetworking.app.modules.profiletwo.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.databinding.RowAutolayoutverticalBinding
import com.tikpikshortvideosocialnetworking.app.modules.profiletwo.`data`.model.AutolayoutverticalRowModel
import kotlin.Int
import kotlin.collections.List

class AutoLayoutVerticalAdapter(
  var list: List<AutolayoutverticalRowModel>
) : RecyclerView.Adapter<AutoLayoutVerticalAdapter.RowAutolayoutverticalVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowAutolayoutverticalVH {
    val
        view=LayoutInflater.from(parent.context).inflate(R.layout.row_autolayoutvertical,parent,false)
    return RowAutolayoutverticalVH(view)
  }

  override fun onBindViewHolder(holder: RowAutolayoutverticalVH, position: Int) {
    val autolayoutverticalRowModel = AutolayoutverticalRowModel()
    // TODO uncomment following line after integration with data source
    // val autolayoutverticalRowModel = list[position]
    holder.binding.autolayoutverticalRowModel = autolayoutverticalRowModel
  }

  override fun getItemCount(): Int = 5
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<AutolayoutverticalRowModel>) {
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
      item: AutolayoutverticalRowModel
    ) {
    }
  }

  inner class RowAutolayoutverticalVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowAutolayoutverticalBinding = RowAutolayoutverticalBinding.bind(itemView)
  }
}
