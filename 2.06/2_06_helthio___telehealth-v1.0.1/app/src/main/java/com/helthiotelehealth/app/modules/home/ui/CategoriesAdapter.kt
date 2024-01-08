package com.helthiotelehealth.app.modules.home.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.databinding.RowCategoriesBinding
import com.helthiotelehealth.app.modules.home.`data`.model.CategoriesRowModel
import kotlin.Int
import kotlin.collections.List

class CategoriesAdapter(
  var list: List<CategoriesRowModel>
) : RecyclerView.Adapter<CategoriesAdapter.RowCategoriesVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowCategoriesVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_categories,parent,false)
    return RowCategoriesVH(view)
  }

  override fun onBindViewHolder(holder: RowCategoriesVH, position: Int) {
    val categoriesRowModel = CategoriesRowModel()
    // TODO uncomment following line after integration with data source
    // val categoriesRowModel = list[position]
    holder.binding.categoriesRowModel = categoriesRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<CategoriesRowModel>) {
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
      item: CategoriesRowModel
    ) {
    }
  }

  inner class RowCategoriesVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowCategoriesBinding = RowCategoriesBinding.bind(itemView)
  }
}
